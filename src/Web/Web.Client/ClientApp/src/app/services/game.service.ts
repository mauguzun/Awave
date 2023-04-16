import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { GameDto } from '../models/GameDto';
import { DataTablesResponseDto } from '../models/DataTablesResponseDto';

@Injectable({
  providedIn: 'root'
})

export class GameService {

  constructor(private http: HttpClient) { }

  get(dataTablesParameters: any): Observable<DataTablesResponseDto<GameDto>> {

    let params = {};


    console.log(dataTablesParameters);

    if (dataTablesParameters != null) {

      const order = dataTablesParameters['order'][0];
      params = new HttpParams()
        .set('orderColumn', dataTablesParameters.columns[order['column']].data)
        .set('isAscSorting', order['dir'] == 'asc')
        .set('pageLength', dataTablesParameters['length'])
        .set('startFrom', dataTablesParameters['start'])
        .set('searchQuery', dataTablesParameters['search']['value'])
    }


    return this.http.get<DataTablesResponseDto<GameDto>>(`${environment.apiUrl}game?${params}`);
  }

}
