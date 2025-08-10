insert into zcaimdb.matchscore 
select ms.* from caimdb.matchscore as ms
inner join caimdb.matchday as m on ms.ms_matchday = m.m_matchday
where m.m_matchstatus = 2;
delete ms from caimdb.matchscore as ms
inner join caimdb.matchday as m on ms.ms_matchday = m.m_matchday
inner join zcaimdb.matchscore as zms on ms.ms_matchday = zms.ms_matchday
	and ms.ms_roundno = zms.ms_roundno
    and ms.ms_tableno = zms.ms_tableno
    and ms.ms_board = zms.ms_board
    and ms.ms_nspair = zms.ms_nspair
where m.m_matchstatus = 2;

insert into zcaimdb.matchpair 
select mp.* from caimdb.matchpair as mp
inner join caimdb.matchday as m on mp.mp_matchday = m.m_matchday
where m.m_matchstatus = 2;
delete mp from caimdb.matchpair as mp
inner join caimdb.matchday as m on mp.mp_matchday = m.m_matchday
inner join zcaimdb.matchpair as zmp on mp.mp_matchday = zmp.mp_matchday
	and mp.mp_pairid = zmp.mp_pairid
where m.m_matchstatus = 2;

insert into zcaimdb.matchhands
select mh.* from caimdb.matchhands as mh
inner join caimdb.matchday as m on mh.mh_matchday = m.m_matchday
where m.m_matchstatus = 2;
delete mh from caimdb.matchhands as mh
inner join caimdb.matchday as m on mh.mh_matchday = m.m_matchday
inner join zcaimdb.matchhands as zmh on mh.mh_matchday = zmh.mh_matchday
	and mh.mh_boardno = zmh.mh_boardno
    and mh.mh_side = zmh.mh_side
where m.m_matchstatus = 2;

insert into zcaimdb.matchalert
select ma.* from caimdb.matchalert as ma
inner join caimdb.matchday as m on ma.ma_matchday = m.m_matchday
where m.m_matchstatus = 2;
delete ma from caimdb.matchalert as ma
inner join caimdb.matchday as m on ma.ma_matchday = m.m_matchday
inner join zcaimdb.matchalert as zma on ma.ma_matchday = zma.ma_matchday
	and ma.ma_boardno = zma.ma_boardno
    and ma.ma_pairno = zma.ma_pairno
where m.m_matchstatus = 2;

