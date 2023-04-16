import { Component, OnDestroy, OnInit } from '@angular/core';
import { ChartData, ChartOptions } from 'chart.js';
import { Subscription } from 'rxjs';
import { MetricServiceService } from 'src/app/services/metric-service.service';

@Component({
  selector: 'app-charts',
  templateUrl: './charts.component.html',
  styleUrls: ['./charts.component.css']
})
export class ChartsComponent implements OnInit, OnDestroy {

  stream$: Subscription | null = null;

  chartData: ChartData = {
    datasets: []
  }

  chartOptions: ChartOptions = {
    responsive: true,
    plugins: {
      title: { display: true, text: 'Top 5 games' },
    },
  };

  constructor(private service: MetricServiceService) {
    this.stream$ = this.service.popular().subscribe(data => { this.chartData = data; });
  }

  ngOnDestroy(): void {
    this.stream$?.unsubscribe();
  }

  ngOnInit() {

  }
}


