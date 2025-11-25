import { Endereco } from "./Endereco";

export class Cliente {
    private cpf: string;
    private nome: string;
    private dataNascimento: Date;
    private rg: number;
    private email: string;
    private telefone: number;
    private endereco: Endereco;

    constructor(nome: string, cpf: string, dataNascimento: Date, rg: number, email: string, telefone: number, endereco: Endereco) {
        this.nome = nome;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.rg = rg;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
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

    public getTelefone(): number {
        return this.telefone;
    }

    public getEndereco(): Endereco {
        return this.endereco;
    }

    public setNome(nome: string): void {
        this.nome = nome;
    }

    public setEmail(email: string): void {
        this.email = email;
    }

    public setTelefone(telefone: number): void {
        this.telefone = telefone;
    }

    public setEndereco(endereco: Endereco): void {
        this.endereco = endereco;
    }

    public toString(): string {
        return `Nome: ${this.nome}, CPF: ${this.cpf}, Data de Nascimento: ${this.dataNascimento.toDateString()}, RG: ${this.rg}, Email: ${this.email}, Telefone: ${this.telefone}, Endereço: [${this.endereco.toString()}]`;
    }
}