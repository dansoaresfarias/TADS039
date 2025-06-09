import { Telefone } from './Telefone';

export class Funcionario {

    private cpf: string;
    private nome: string;
    private nomeSocial?: string;
    private email: string;
    private sexo: string;
    private estadoCivil: string;
    private dataNascimento: Date;
    private cargaHoraria: number;
    private salario: number;
    private comissao?: number;
    private dataAdmissao: Date;
    private dataDemissao?: Date;
    private telefones: Telefone[] = [];

    constructor(cpf: string, nome: string, email: string, sexo: string, estadoCivil: string, dataNascimento: Date, cargaHoraria: number, salario: number, dataAdmissao: Date) {
        this.cpf = cpf;
        this.nome = nome;
        this.email = email;
        this.sexo = sexo;
        this.estadoCivil = estadoCivil;
        this.dataNascimento = dataNascimento;
        this.cargaHoraria = cargaHoraria;
        this.salario = salario;
        this.dataAdmissao = dataAdmissao;
        this.telefones = [];
    }

    public getCpf(): string {
        return this.cpf;
    }

    public getNome(): string {
        return this.nome;
    }

    public getNomeSocial(): string | undefined {
        return this.nomeSocial;
    }

    public setNomeSocial(nomeSocial: string): void {
        this.nomeSocial = nomeSocial;
    }

    public getEmail(): string {
        return this.email;
    }

    public getSexo(): string {
        return this.sexo;
    }

    public getEstadoCivil(): string {
        return this.estadoCivil;
    }

    public getDataNascimento(): Date {
        return this.dataNascimento;
    }

    public getCargaHoraria(): number {
        return this.cargaHoraria;
    }

    public getSalario(): number {
        return this.salario;
    }

    public getComissao(): number | undefined {
        return this.comissao;
    }

    public setComissao(comissao: number): void {
        this.comissao = comissao;
    }
    
    public getDataAdmissao(): Date {
        return this.dataAdmissao;
    }

    public getDataDemissao(): Date | undefined {
        return this.dataDemissao;
    }

    public setDataDemissao(dataDemissao: Date): void {
        this.dataDemissao = dataDemissao;
    }

    public getTelefones(): Telefone[] {
        return this.telefones;
    }

    public adicionarTelefone(telefone: Telefone): void {
        this.telefones.push(telefone);
    }

    public adicionarNumTelefone(numero: string): void {
        const telefone = new Telefone(numero);
        this.telefones.push(telefone);
    }

    public removerTelefone(telefone: Telefone): void {
        const index = this.telefones.indexOf(telefone);
        if (index > -1) {
            this.telefones.splice(index, 1);
        }
    }

    public removerNumTelefone(numero: string): void {
        this.telefones = this.telefones.filter(telefone => telefone.getNumero() !== numero);
    }

    public toString(): string {
        return `Funcionario: ${this.nome}, CPF: ${this.cpf}, Email: ${this.email}, Sexo: ${this.sexo}, Estado Civil: ${this.estadoCivil}, Data de Nascimento: ${this.dataNascimento.toLocaleDateString()}, Carga Horária: ${this.cargaHoraria} horas, Salário: R$${this.salario.toFixed(2)}, Data de Admissão: ${this.dataAdmissao.toLocaleDateString()} Telefones: ${this.telefones.map(tel => tel.getNumero()).join(', ')}`;
    }
}