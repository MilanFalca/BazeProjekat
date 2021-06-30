
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/29/2021 19:50:30
-- Generated from EDMX file: C:\Users\Predrag\source\repos\AutomehanicarskaRadnja\AutomehanicarskaRadnjaClassLibrary\AutomehanicarskaRadnja.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [master];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AutomobilTehnickiPregled]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TehnickiPregleds] DROP CONSTRAINT [FK_AutomobilTehnickiPregled];
GO
IF OBJECT_ID(N'[dbo].[FK_KvarAutomobil_Kvar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KvarAutomobil] DROP CONSTRAINT [FK_KvarAutomobil_Kvar];
GO
IF OBJECT_ID(N'[dbo].[FK_KvarAutomobil_Automobil]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KvarAutomobil] DROP CONSTRAINT [FK_KvarAutomobil_Automobil];
GO
IF OBJECT_ID(N'[dbo].[FK_PosaoTehnickiPregled_Posao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PosaoTehnickiPregled] DROP CONSTRAINT [FK_PosaoTehnickiPregled_Posao];
GO
IF OBJECT_ID(N'[dbo].[FK_PosaoTehnickiPregled_TehnickiPregled]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PosaoTehnickiPregled] DROP CONSTRAINT [FK_PosaoTehnickiPregled_TehnickiPregled];
GO
IF OBJECT_ID(N'[dbo].[FK_AlatPosao_Alat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AlatPosao] DROP CONSTRAINT [FK_AlatPosao_Alat];
GO
IF OBJECT_ID(N'[dbo].[FK_AlatPosao_Posao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AlatPosao] DROP CONSTRAINT [FK_AlatPosao_Posao];
GO
IF OBJECT_ID(N'[dbo].[FK_TehnickiPregledGaraza]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Garazas] DROP CONSTRAINT [FK_TehnickiPregledGaraza];
GO
IF OBJECT_ID(N'[dbo].[FK_OpremaGaraza_Oprema]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OpremaGaraza] DROP CONSTRAINT [FK_OpremaGaraza_Oprema];
GO
IF OBJECT_ID(N'[dbo].[FK_OpremaGaraza_Garaza]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OpremaGaraza] DROP CONSTRAINT [FK_OpremaGaraza_Garaza];
GO
IF OBJECT_ID(N'[dbo].[FK_TehnickiPregledMaterijal_TehnickiPregled]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TehnickiPregledMaterijal] DROP CONSTRAINT [FK_TehnickiPregledMaterijal_TehnickiPregled];
GO
IF OBJECT_ID(N'[dbo].[FK_TehnickiPregledMaterijal_Materijal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TehnickiPregledMaterijal] DROP CONSTRAINT [FK_TehnickiPregledMaterijal_Materijal];
GO
IF OBJECT_ID(N'[dbo].[FK_ZaposleniTehnickiPregled]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TehnickiPregleds] DROP CONSTRAINT [FK_ZaposleniTehnickiPregled];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Automobils]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Automobils];
GO
IF OBJECT_ID(N'[dbo].[Zaposlenis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Zaposlenis];
GO
IF OBJECT_ID(N'[dbo].[Posaos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posaos];
GO
IF OBJECT_ID(N'[dbo].[TehnickiPregleds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TehnickiPregleds];
GO
IF OBJECT_ID(N'[dbo].[Kvars]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kvars];
GO
IF OBJECT_ID(N'[dbo].[Garazas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Garazas];
GO
IF OBJECT_ID(N'[dbo].[Materijals]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Materijals];
GO
IF OBJECT_ID(N'[dbo].[Alats]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Alats];
GO
IF OBJECT_ID(N'[dbo].[Opremas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Opremas];
GO
IF OBJECT_ID(N'[dbo].[KvarAutomobil]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KvarAutomobil];
GO
IF OBJECT_ID(N'[dbo].[PosaoTehnickiPregled]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PosaoTehnickiPregled];
GO
IF OBJECT_ID(N'[dbo].[AlatPosao]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AlatPosao];
GO
IF OBJECT_ID(N'[dbo].[OpremaGaraza]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OpremaGaraza];
GO
IF OBJECT_ID(N'[dbo].[TehnickiPregledMaterijal]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TehnickiPregledMaterijal];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Automobils'
CREATE TABLE [dbo].[Automobils] (
    [AutomobilId] int IDENTITY(1,1) NOT NULL,
    [MarkaAutomobila] nvarchar(max)  NOT NULL,
    [GodinaProizvodnje] datetime  NOT NULL,
    [BrojSasije] int  NOT NULL
);
GO

-- Creating table 'Zaposlenis'
CREATE TABLE [dbo].[Zaposlenis] (
    [ZaposleniId] int IDENTITY(1,1) NOT NULL,
    [ImeZaposlenog] nvarchar(max)  NOT NULL,
    [PrezimeZaposlenog] nvarchar(max)  NOT NULL,
    [JMBGZaposlenog] int  NOT NULL,
    [TipZaposlenog] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Posaos'
CREATE TABLE [dbo].[Posaos] (
    [PosaoId] int IDENTITY(1,1) NOT NULL,
    [PredvidjenoTrajanje] int  NOT NULL,
    [NazivPosla] nvarchar(max)  NOT NULL,
    [CenaPosla] float  NOT NULL
);
GO

-- Creating table 'TehnickiPregleds'
CREATE TABLE [dbo].[TehnickiPregleds] (
    [TehnickiPregledId] int IDENTITY(1,1) NOT NULL,
    [DatumIVreme] datetime  NOT NULL,
    [Status] int  NOT NULL,
    [Opis] nvarchar(max)  NOT NULL,
    [AutomobilAutomobilId] int  NOT NULL,
    [ZaposleniZaposleniId] int  NOT NULL,
    [GarazaGarazaId] int  NOT NULL
);
GO

-- Creating table 'Kvars'
CREATE TABLE [dbo].[Kvars] (
    [KvarId] int IDENTITY(1,1) NOT NULL,
    [MestoKvara] nvarchar(max)  NOT NULL,
    [Opis] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Garazas'
CREATE TABLE [dbo].[Garazas] (
    [GarazaId] int IDENTITY(1,1) NOT NULL,
    [Naziv] nvarchar(max)  NOT NULL,
    [Broj] int  NOT NULL,
    [TehnickiPregledTehnickiPregledId] int  NOT NULL
);
GO

-- Creating table 'Materijals'
CREATE TABLE [dbo].[Materijals] (
    [MaterijalId] int IDENTITY(1,1) NOT NULL,
    [Naziv] nvarchar(max)  NOT NULL,
    [RaspolozivocStanje] int  NOT NULL,
    [CenaPoKomadu] float  NOT NULL
);
GO

-- Creating table 'Alats'
CREATE TABLE [dbo].[Alats] (
    [AlatId] int IDENTITY(1,1) NOT NULL,
    [TipAlata] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Opremas'
CREATE TABLE [dbo].[Opremas] (
    [OpremaId] int IDENTITY(1,1) NOT NULL,
    [Naziv] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'KvarAutomobil'
CREATE TABLE [dbo].[KvarAutomobil] (
    [Kvars_KvarId] int  NOT NULL,
    [Automobils_AutomobilId] int  NOT NULL
);
GO

-- Creating table 'PosaoTehnickiPregled'
CREATE TABLE [dbo].[PosaoTehnickiPregled] (
    [Posaos_PosaoId] int  NOT NULL,
    [TehnickiPregleds_TehnickiPregledId] int  NOT NULL
);
GO

-- Creating table 'AlatPosao'
CREATE TABLE [dbo].[AlatPosao] (
    [Alats_AlatId] int  NOT NULL,
    [Posaos_PosaoId] int  NOT NULL
);
GO

-- Creating table 'OpremaGaraza'
CREATE TABLE [dbo].[OpremaGaraza] (
    [Opremas_OpremaId] int  NOT NULL,
    [Garazas_GarazaId] int  NOT NULL
);
GO

-- Creating table 'TehnickiPregledMaterijal'
CREATE TABLE [dbo].[TehnickiPregledMaterijal] (
    [TehnickiPregleds_TehnickiPregledId] int  NOT NULL,
    [Materijals_MaterijalId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AutomobilId] in table 'Automobils'
ALTER TABLE [dbo].[Automobils]
ADD CONSTRAINT [PK_Automobils]
    PRIMARY KEY CLUSTERED ([AutomobilId] ASC);
GO

-- Creating primary key on [ZaposleniId] in table 'Zaposlenis'
ALTER TABLE [dbo].[Zaposlenis]
ADD CONSTRAINT [PK_Zaposlenis]
    PRIMARY KEY CLUSTERED ([ZaposleniId] ASC);
GO

-- Creating primary key on [PosaoId] in table 'Posaos'
ALTER TABLE [dbo].[Posaos]
ADD CONSTRAINT [PK_Posaos]
    PRIMARY KEY CLUSTERED ([PosaoId] ASC);
GO

-- Creating primary key on [TehnickiPregledId] in table 'TehnickiPregleds'
ALTER TABLE [dbo].[TehnickiPregleds]
ADD CONSTRAINT [PK_TehnickiPregleds]
    PRIMARY KEY CLUSTERED ([TehnickiPregledId] ASC);
GO

-- Creating primary key on [KvarId] in table 'Kvars'
ALTER TABLE [dbo].[Kvars]
ADD CONSTRAINT [PK_Kvars]
    PRIMARY KEY CLUSTERED ([KvarId] ASC);
GO

-- Creating primary key on [GarazaId] in table 'Garazas'
ALTER TABLE [dbo].[Garazas]
ADD CONSTRAINT [PK_Garazas]
    PRIMARY KEY CLUSTERED ([GarazaId] ASC);
GO

-- Creating primary key on [MaterijalId] in table 'Materijals'
ALTER TABLE [dbo].[Materijals]
ADD CONSTRAINT [PK_Materijals]
    PRIMARY KEY CLUSTERED ([MaterijalId] ASC);
GO

-- Creating primary key on [AlatId] in table 'Alats'
ALTER TABLE [dbo].[Alats]
ADD CONSTRAINT [PK_Alats]
    PRIMARY KEY CLUSTERED ([AlatId] ASC);
GO

-- Creating primary key on [OpremaId] in table 'Opremas'
ALTER TABLE [dbo].[Opremas]
ADD CONSTRAINT [PK_Opremas]
    PRIMARY KEY CLUSTERED ([OpremaId] ASC);
GO

-- Creating primary key on [Kvars_KvarId], [Automobils_AutomobilId] in table 'KvarAutomobil'
ALTER TABLE [dbo].[KvarAutomobil]
ADD CONSTRAINT [PK_KvarAutomobil]
    PRIMARY KEY CLUSTERED ([Kvars_KvarId], [Automobils_AutomobilId] ASC);
GO

-- Creating primary key on [Posaos_PosaoId], [TehnickiPregleds_TehnickiPregledId] in table 'PosaoTehnickiPregled'
ALTER TABLE [dbo].[PosaoTehnickiPregled]
ADD CONSTRAINT [PK_PosaoTehnickiPregled]
    PRIMARY KEY CLUSTERED ([Posaos_PosaoId], [TehnickiPregleds_TehnickiPregledId] ASC);
GO

-- Creating primary key on [Alats_AlatId], [Posaos_PosaoId] in table 'AlatPosao'
ALTER TABLE [dbo].[AlatPosao]
ADD CONSTRAINT [PK_AlatPosao]
    PRIMARY KEY CLUSTERED ([Alats_AlatId], [Posaos_PosaoId] ASC);
GO

-- Creating primary key on [Opremas_OpremaId], [Garazas_GarazaId] in table 'OpremaGaraza'
ALTER TABLE [dbo].[OpremaGaraza]
ADD CONSTRAINT [PK_OpremaGaraza]
    PRIMARY KEY CLUSTERED ([Opremas_OpremaId], [Garazas_GarazaId] ASC);
GO

-- Creating primary key on [TehnickiPregleds_TehnickiPregledId], [Materijals_MaterijalId] in table 'TehnickiPregledMaterijal'
ALTER TABLE [dbo].[TehnickiPregledMaterijal]
ADD CONSTRAINT [PK_TehnickiPregledMaterijal]
    PRIMARY KEY CLUSTERED ([TehnickiPregleds_TehnickiPregledId], [Materijals_MaterijalId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AutomobilAutomobilId] in table 'TehnickiPregleds'
ALTER TABLE [dbo].[TehnickiPregleds]
ADD CONSTRAINT [FK_AutomobilTehnickiPregled]
    FOREIGN KEY ([AutomobilAutomobilId])
    REFERENCES [dbo].[Automobils]
        ([AutomobilId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AutomobilTehnickiPregled'
CREATE INDEX [IX_FK_AutomobilTehnickiPregled]
ON [dbo].[TehnickiPregleds]
    ([AutomobilAutomobilId]);
GO

-- Creating foreign key on [Kvars_KvarId] in table 'KvarAutomobil'
ALTER TABLE [dbo].[KvarAutomobil]
ADD CONSTRAINT [FK_KvarAutomobil_Kvar]
    FOREIGN KEY ([Kvars_KvarId])
    REFERENCES [dbo].[Kvars]
        ([KvarId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Automobils_AutomobilId] in table 'KvarAutomobil'
ALTER TABLE [dbo].[KvarAutomobil]
ADD CONSTRAINT [FK_KvarAutomobil_Automobil]
    FOREIGN KEY ([Automobils_AutomobilId])
    REFERENCES [dbo].[Automobils]
        ([AutomobilId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KvarAutomobil_Automobil'
CREATE INDEX [IX_FK_KvarAutomobil_Automobil]
ON [dbo].[KvarAutomobil]
    ([Automobils_AutomobilId]);
GO

-- Creating foreign key on [Posaos_PosaoId] in table 'PosaoTehnickiPregled'
ALTER TABLE [dbo].[PosaoTehnickiPregled]
ADD CONSTRAINT [FK_PosaoTehnickiPregled_Posao]
    FOREIGN KEY ([Posaos_PosaoId])
    REFERENCES [dbo].[Posaos]
        ([PosaoId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TehnickiPregleds_TehnickiPregledId] in table 'PosaoTehnickiPregled'
ALTER TABLE [dbo].[PosaoTehnickiPregled]
ADD CONSTRAINT [FK_PosaoTehnickiPregled_TehnickiPregled]
    FOREIGN KEY ([TehnickiPregleds_TehnickiPregledId])
    REFERENCES [dbo].[TehnickiPregleds]
        ([TehnickiPregledId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PosaoTehnickiPregled_TehnickiPregled'
CREATE INDEX [IX_FK_PosaoTehnickiPregled_TehnickiPregled]
ON [dbo].[PosaoTehnickiPregled]
    ([TehnickiPregleds_TehnickiPregledId]);
GO

-- Creating foreign key on [Alats_AlatId] in table 'AlatPosao'
ALTER TABLE [dbo].[AlatPosao]
ADD CONSTRAINT [FK_AlatPosao_Alat]
    FOREIGN KEY ([Alats_AlatId])
    REFERENCES [dbo].[Alats]
        ([AlatId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Posaos_PosaoId] in table 'AlatPosao'
ALTER TABLE [dbo].[AlatPosao]
ADD CONSTRAINT [FK_AlatPosao_Posao]
    FOREIGN KEY ([Posaos_PosaoId])
    REFERENCES [dbo].[Posaos]
        ([PosaoId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AlatPosao_Posao'
CREATE INDEX [IX_FK_AlatPosao_Posao]
ON [dbo].[AlatPosao]
    ([Posaos_PosaoId]);
GO

-- Creating foreign key on [Opremas_OpremaId] in table 'OpremaGaraza'
ALTER TABLE [dbo].[OpremaGaraza]
ADD CONSTRAINT [FK_OpremaGaraza_Oprema]
    FOREIGN KEY ([Opremas_OpremaId])
    REFERENCES [dbo].[Opremas]
        ([OpremaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Garazas_GarazaId] in table 'OpremaGaraza'
ALTER TABLE [dbo].[OpremaGaraza]
ADD CONSTRAINT [FK_OpremaGaraza_Garaza]
    FOREIGN KEY ([Garazas_GarazaId])
    REFERENCES [dbo].[Garazas]
        ([GarazaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OpremaGaraza_Garaza'
CREATE INDEX [IX_FK_OpremaGaraza_Garaza]
ON [dbo].[OpremaGaraza]
    ([Garazas_GarazaId]);
GO

-- Creating foreign key on [TehnickiPregleds_TehnickiPregledId] in table 'TehnickiPregledMaterijal'
ALTER TABLE [dbo].[TehnickiPregledMaterijal]
ADD CONSTRAINT [FK_TehnickiPregledMaterijal_TehnickiPregled]
    FOREIGN KEY ([TehnickiPregleds_TehnickiPregledId])
    REFERENCES [dbo].[TehnickiPregleds]
        ([TehnickiPregledId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Materijals_MaterijalId] in table 'TehnickiPregledMaterijal'
ALTER TABLE [dbo].[TehnickiPregledMaterijal]
ADD CONSTRAINT [FK_TehnickiPregledMaterijal_Materijal]
    FOREIGN KEY ([Materijals_MaterijalId])
    REFERENCES [dbo].[Materijals]
        ([MaterijalId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TehnickiPregledMaterijal_Materijal'
CREATE INDEX [IX_FK_TehnickiPregledMaterijal_Materijal]
ON [dbo].[TehnickiPregledMaterijal]
    ([Materijals_MaterijalId]);
GO

-- Creating foreign key on [ZaposleniZaposleniId] in table 'TehnickiPregleds'
ALTER TABLE [dbo].[TehnickiPregleds]
ADD CONSTRAINT [FK_ZaposleniTehnickiPregled]
    FOREIGN KEY ([ZaposleniZaposleniId])
    REFERENCES [dbo].[Zaposlenis]
        ([ZaposleniId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ZaposleniTehnickiPregled'
CREATE INDEX [IX_FK_ZaposleniTehnickiPregled]
ON [dbo].[TehnickiPregleds]
    ([ZaposleniZaposleniId]);
GO

-- Creating foreign key on [GarazaGarazaId] in table 'TehnickiPregleds'
ALTER TABLE [dbo].[TehnickiPregleds]
ADD CONSTRAINT [FK_GarazaTehnickiPregled]
    FOREIGN KEY ([GarazaGarazaId])
    REFERENCES [dbo].[Garazas]
        ([GarazaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GarazaTehnickiPregled'
CREATE INDEX [IX_FK_GarazaTehnickiPregled]
ON [dbo].[TehnickiPregleds]
    ([GarazaGarazaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------