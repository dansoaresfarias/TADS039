import { Entity, PrimaryColumn, Column } from 'typeorm';

@Entity('Cargo')
export class Cargo {
  @PrimaryColumn({ type: 'int' })
  cbo: number;

  @Column({ type: 'varchar', length: 45 })
  public nome: string;

  constructor( cbo: number, nome: string){
    this.cbo = cbo;
    this.nome = nome;
  }
}