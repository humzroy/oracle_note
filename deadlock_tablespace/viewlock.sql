--查看锁表
    select 
       --sess.sid,
       --sess.serial#,
       lo.locked_mode,
       lo.oracle_username,
       lo.os_user_name,
       ao.object_name,
       sess.MACHINE,
       sess.CLIENT_INFO,
       sess.TERMINAL,
       sess.PROGRAM,
       sess.LOGON_TIME,
       'alter system kill session ' || '''' || sess.sid || ',' ||
       sess.serial# || '''' || ';' ----kill 进程
  from v$locked_object lo, dba_objects ao, v$session sess
 where ao.object_id = lo.object_id
   and lo.session_id = sess.sid;
   
--查询sql
SELECT SID, SERIAL#, PADDR FROM V$SESSION WHERE SID = '刚才查到的SID';