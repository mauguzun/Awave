import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { ChartData } from 'chart.js';

@Injectable({
  providedIn: 'root'
})
export class MetricServiceService {

  constructor(private http: HttpClient) { }

  popular(): Observable<ChartData> {
    return this.http.get<ChartData>(`${environment.apiUrl}metric/best`);
  }

}
