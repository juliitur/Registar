/* Create Tables for wpfRegiStar 
	Script date: 18-10-2018
	By: Iulii Turenco, Alexander Figueiras, Alexei Mostovoi
*/

USE master
;
go 

/*
drop database wpfRegistar
;
go
*/

create database wpfRegistar
on primary
(
	--rows data file name
	name = 'wpfRegistar', 
	--rows data path and filename
	filename = 'E:\MSS_databases\wpfRegistar.mdf',
	--rows data size
	size = 12MB,
	--rows data file growth
	filegrowth = 2MB,
	--maximum size of the file growth
	maxsize = 100MB

)

log on 
(
	--log data file name
	name = 'wpfRegistar_log', 
	--log data path and filename
	filename = 'E:\MSS_databases\wpfRegistar.ldf',
	--log data size
	size = 3MB,
	--log data file growth
	filegrowth = 10%,
	--maximum size of the file growth
	maxsize = 25MB

)
;
go