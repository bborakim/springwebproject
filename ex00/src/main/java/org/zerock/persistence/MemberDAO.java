package org.zerock.persistence;

import org.zerock.domain.MemberVo;

public interface MemberDAO {

	public String getTime();
	
	public void insertMember(MemberVo vo);
	
	public MemberVo readMember(String userid)throws Exception;
	
	public MemberVo readWithPW(String userid, String userpw)throws Exception;
	
}
