import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Review } from '../models/Review';
import { ReviewService } from '../services/review.service';

@Component({
  selector: 'app-review',
  templateUrl: './review.component.html',
  styleUrls: ['./review.component.css']
})

export class ReviewComponent implements OnInit {

  myForm: FormGroup = new FormGroup({
    "name": new FormControl("", Validators.required),
    "email": new FormControl("", [
      Validators.required,
      Validators.email
    ]),
    "raiting": new FormControl(1, []),
    "comment": new FormControl("", [])
  });

  gameId!: number;
  gameName: string | null = null;
  errorMessage: string | null = null;
  isSended: boolean = false;

  raiting = [
    { "id": 1, "name": "Value is 1" },
    { "id": 2, "name": "Value is 2" },
    { "id": 3, "name": "Value is 3" },
    { "id": 4, "name": "Value is 4" },
    { "id": 5, "name": "Value is 5" },
    { "id": 6, "name": "Value is 6" },
    { "id": 7, "name": "Value is 7" },
    { "id": 8, "name": "Value is 8" },
    { "id": 9, "name": "Value is 9" },
    { "id": 10, "name": "Amazing" },
  ];


  constructor(private route: ActivatedRoute, private service: ReviewService, private router: Router) { }

  ngOnInit() {

    this.route.params.subscribe((params) => {
      this.gameName = params.name;
      this.gameId = params.id;
    });
  }

  submit() {

    let review = new Review(
      this.myForm.value['name'],
      this.myForm.value['raiting'],
      this.myForm.value['email'],
      this.gameId,
      this.myForm.value['comment']
    );
    
    this.isSended = true;   
    this.errorMessage = null;
   
    this.service.add(review)
      .subscribe(
        res => {
          this.errorMessage = "Saved";
          this.router.navigate(['/']);
        },
        err => {
          this.isSended = false;
          this.errorMessage = err.error
        }, 
        () => console.log('HTTP request completed.')
      )
  }


}
