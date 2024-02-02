import { Model } from "mongoose";

export interface TBooks {
    id: number;
    title: string;
    author: string;
    genre: string;
    price: number;
}

export interface BookModel extends Model<TBooks> {
    // eslint-disable-next-line no-unused-vars
    isBooksExistsByCustomId(id: string): Promise<TBooks>;
  }