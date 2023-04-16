import { Data } from "popper.js"

export interface GameDto {
    id: number
    name: string
    released: Data
    rating: number
    added: number
    playtime: number
    ratingsCount: number
    reviewsTextCount: number
  }
  