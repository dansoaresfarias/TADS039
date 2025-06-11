import {
    Entity,
    PrimaryColumn,
    Column,
    Unique,
} from 'typeorm';

@Entity('funcionario', { schema: "apifarmacia" })
@Unique(['email'])
export class Funcionario {
    @PrimaryColumn({ type: 'varchar', length: 14 })
    cpf: string;

    @Column({ type: 'varchar', length: 60 })
    nome: string;

    @Column({ type: 'varchar', length: 45, nullable: true })
    nomeSocial?: string;

    @Column({ type: 'varchar', length: 45 })
    email: string;

    @Column({ type: 'char', length: 1 })
    sexo: string;

    @Column({ type: 'varchar', length: 15 })
    estadoCivil: string;

    @Column({ type: 'date' })
    dataNascimento: Date;

    @Column({ type: 'int' })
    cargaHoraria: number;

    @Column({ type: 'decimal', precision: 7, scale: 2, unsigned: true })
    salario: number;

    @Column({ type: 'decimal', precision: 6, scale: 2, unsigned: true, nullable: true })
    comissao?: number;

    @Column({ type: 'datetime' })
    dataAdmissao: Date;

    @Column({ type: 'datetime', nullable: true })
    dataDemissao?: Date;

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

    public toString(): string {
        return `Funcionario: ${this.nome}, CPF: ${this.cpf}, Email: ${this.email}, Sexo: ${this.sexo}, Estado Civil: ${this.estadoCivil}, Data de Nascimento: ${this.dataNascimento.toLocaleDateString()}, Carga Horária: ${this.cargaHoraria} horas, Salário: R$${this.salario.toFixed(2)}, Data de Admissão: ${this.dataAdmissao.toLocaleDateString()}`;
    }
}