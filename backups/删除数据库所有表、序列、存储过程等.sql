--delete tables 
select 'drop table ' || table_name ||';' from user_tables;   

--delete views 
select 'drop view ' || view_name||';' from user_views;   

--delete seqs 
select 'drop sequence ' || sequence_name||';' from user_sequences;  

--delete functions 
select 'drop function ' || object_name||';' from user_objects where object_type='FUNCTION';   

--delete procedure 
select 'drop procedure ' || object_name||';' from user_objects where object_type='PROCEDURE';   

--delete package 
select 'drop package ' || object_name||';' from user_objects where object_type='PACKAGE';