import { Endereco } from "./Endereco";

export class Agencia {
    private nome: string;
    private numero: number;
    private telefone: string;
    private email: string;
    private endereco: Endereco;

    constructor(nome: string, numero: number, telefone: string, email: string, endereco: Endereco) {
        this.nome = nome;
        this.numero = numero;
        this.telefone = telefone;
        this.email = email;
        this.endereco = endereco;
    }

    public getNome(): string {
        return this.nome;
    }

    public getNumero(): number {
        return this.numero;
    }

    public getTelefone(): string {
        return this.telefone;
    }

    public getEmail(): string {
        return this.email;
    }

    public getEndereco(): Endereco {
        return this.endereco;
    }

    public setNome(nome: string): void {
        this.nome = nome;
    }

    public setTelefone(telefone: string): void {
        this.telefone = telefone;
    }

    public setEmail(email: string): void {
        this.email = email;
    }

    public setEndereco(endereco: Endereco): void {
        this.endereco = endereco;
    }

    public toString(): string {
        return `${this.nome}, Nº: ${this.numero}, Telefone: ${this.telefone}, Email: ${this.email}, localizado em ${this.endereco.toString()}`;
    }

}