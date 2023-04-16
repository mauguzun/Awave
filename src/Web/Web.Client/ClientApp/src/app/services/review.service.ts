import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { ReviewDto } from '../models/ReviewDto';
import { Review } from '../models/Review';

@Injectable({
  providedIn: 'root'
})

export class ReviewService {

  constructor(private http: HttpClient) { }

  
  last(): Observable<ReviewDto> {
    return this.http.get<ReviewDto>(`${environment.apiUrl}review`);
  }

  /**
   * 
   * @param review 
   * @returns 
   */
  add(review: Review): Observable<string> {
    return this.http.post<string>(`${environment.apiUrl}review`, review);
  }

}
