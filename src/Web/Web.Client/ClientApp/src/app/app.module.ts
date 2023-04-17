import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { DataTablesModule } from "angular-datatables";


import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { ChartsComponent } from './home/charts/charts.component';
import { NgChartsModule } from 'ng2-charts';
import { LastReviewsComponent } from './home/last-reviews/last-reviews.component';
import { GamesComponent } from './games/games.component';
import { ReviewComponent } from './review/review.component';
import { CurrencyPipe, DatePipe } from '@angular/common';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    ChartsComponent,
    LastReviewsComponent,
    GamesComponent,
    ReviewComponent, 
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    NgChartsModule,
    DataTablesModule,
    RouterModule.forRoot([
      { path: '', component: HomeComponent, pathMatch: 'full' },
      { path: 'games', component: GamesComponent },
      { path: 'review/:id/:name', component: ReviewComponent },
    ])
  ],
  providers: [DatePipe],
  bootstrap: [AppComponent]
})
export class AppModule { }
