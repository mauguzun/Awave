import { Component, OnInit } from '@angular/core';
import { ReviewService } from 'src/app/services/review.service';

@Component({
  selector: 'app-last-reviews',
  templateUrl: './last-reviews.component.html',
  styleUrls: ['./last-reviews.component.css']
})
export class LastReviewsComponent implements OnInit {

  dtOptions: DataTables.Settings = {};

  constructor(private service: ReviewService) {
  }

  ngOnInit(): void {

    this.dtOptions = {
      searching: false,
      ordering: false,
      
      ajax: (dataTablesParameters: any, callback) => {
        this.service.last().subscribe(resp => {
          callback({ data: resp });
        });
      },
      columns: [{
        title: 'Game Name',
        data: 'gameName'
      }, {
        title: 'Name',
        data: 'name'
      }, {
        title: 'Email',
        data: 'email'
      }, {
        title: 'Rating',
        data: 'rating'
      }, {
        title: 'Comment',
        data: 'comment'
      }]
    };
  }
}