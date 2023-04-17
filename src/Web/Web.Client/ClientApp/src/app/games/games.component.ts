import { Component, OnInit } from '@angular/core';
import { GameService } from '../services/game.service';
import { DataTablesResponseDto } from '../models/DataTablesResponseDto';
import { GameDto } from '../models/GameDto';
import { Router } from '@angular/router';
import { ADTSettings } from 'angular-datatables/src/models/settings';
import { CurrencyPipe, DatePipe } from '@angular/common';

@Component({
  selector: 'app-games',
  templateUrl: './games.component.html',
  styleUrls: ['./games.component.css']
})
export class GamesComponent implements OnInit {

  dtOptions: ADTSettings = {};
  constructor(private service: GameService, private router: Router,    private datePipe: DatePipe) { }

  redirectToReview(info: any): void {
    this.router.navigate([`./review/${info.id}/${info.name}`]);
  }

  ngOnInit(): void {

    this.dtOptions = {
      serverSide: true,

      pagingType: 'full_numbers',
      pageLength: 10,
      processing: true,
     

      ajax: (dataTablesParameters: any, callback) => {

        this.service.get(dataTablesParameters)
          .subscribe((resp: DataTablesResponseDto<GameDto>) => {
            callback(resp);
          });
      },

      columns: [{
        title: 'Id',
        data: 'id',
        
      }, {
        title: 'Name',
        data: 'name',
       
      }, {
        title: 'Released',
        data: 'released',
        ngPipeInstance: this.datePipe,
        ngPipeArgs: ['Y']
      }, {
        title: 'Rating',
        data: 'rating'
      }],

      rowCallback: (row: Node, data: any[] | Object, index: number) => {
        const self = this;

        $('td', row).off('click');
        $('td', row).on('click', () => {
          self.redirectToReview(data);
        });
        return row;
      }

    };
  }



}
