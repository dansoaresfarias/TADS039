import { Entity, PrimaryColumn,Column } from "typeorm";

@Entity("clientes")
export class Cliente {
    @PrimaryColumn({ length: 14 })
    cpf: string;

    @Column({ length: 150 })
    nome: string;

    @Column({ type: 'date' })
    dataNascimento: Date;

    @Column({ type: 'int' })
    rg: number;
 
    @Column({ length: 150, unique: true })
    email: string;

    @Column({ length: 15, unique: true })
    telefone: string;

    constructor(nome: string, cpf: string, dataNascimento: Date, rg: number, email: string, telefone: string) {
        this.nome = nome;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.rg = rg;
        this.email = email;
        this.telefone = telefone;
    }

    public getNome(): string {
        return this.nome;
    }

    public getCpf(): string {
        return this.cpf;
    }   

    public getDataNascimento(): Date {
        return this.dataNascimento;
    }

    public getRg(): number {
        return this.rg;
    }

    public getEmail(): string {
        return this.email;
    }

    public getTelefone(): string {
        return this.telefone;
    }

    public setNome(nome: string): void {
        this.nome = nome;
    }

    public setEmail(email: string): void {
        this.email = email;
    }

    public setTelefone(telefone: string): void {
        this.telefone = telefone;
    }

    public toString(): string {
        return `Nome: ${this.nome}, CPF: ${this.cpf}, Data de Nascimento: ${this.dataNascimento.toDateString()}, RG: ${this.rg}, Email: ${this.email}, Telefone: ${this.telefone}]`;
    }
}