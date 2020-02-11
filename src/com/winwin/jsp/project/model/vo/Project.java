package com.winwin.jsp.project.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Project implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2244802554517727050L;
	private int pno; // ������Ʈ ��ȣ
	private Date penroll; // ��ϳ�¥
	private String ptitle; // ������Ʈ��
	private String pbang; // ����(���� or ����)
	private String ptype; // �з� 
	private String pdetail; // �󼼺з�
	private String pcotx; // ����
	private int pcost; // ������
	private Date pstart; //���������
	private Date pend; // ���󸶰���
	private String pgo; // ����Ⱓ
	private Date pmodate; // ������¥
	private String pmodwtr; // �����ۼ���
	private int cno; // ��� ��ȣ
	private String conf1; // ���� ���� 
	private String conf2; // �������� ���� 
	public Project(String ptitle, String pbang, String ptype, String pdetail, String pcotx, Date pstart, Date pend,
			String pgo, String conf1, String conf2) {
		super();
		this.ptitle = ptitle;
		this.pbang = pbang;
		this.ptype = ptype;
		this.pdetail = pdetail;
		this.pcotx = pcotx;
		this.pstart = pstart;
		this.pend = pend;
		this.pgo = pgo;
		this.conf1 = conf1;
		this.conf2 = conf2;
	}
	public String getConf1() {
		return conf1;
	}
	public void setConf1(String conf1) {
		this.conf1 = conf1;
	}
	public String getConf2() {
		return conf2;
	}
	public void setConf2(String conf2) {
		this.conf2 = conf2;
	}
	public Project(int pno, Date penroll, String ptitle, String pbang, String ptype, String pdetail, String pcotx,
			int pcost, Date pstart, Date pend, String pgo, Date pmodate, String pmodwtr, int cno) {
		super();
		this.pno = pno;
		this.penroll = penroll;
		this.ptitle = ptitle;
		this.pbang = pbang;
		this.ptype = ptype;
		this.pdetail = pdetail;
		this.pcotx = pcotx;
		this.pcost = pcost;
		this.pstart = pstart;
		this.pend = pend;
		this.pgo = pgo;
		this.pmodate = pmodate;
		this.pmodwtr = pmodwtr;
		this.cno = cno;
	}
	public Project(String ptitle, String pbang, String ptype, String pdetail, String pcotx, Date pstart, Date pend,
			String pgo) {
		super();
		this.ptitle = ptitle;
		this.pbang = pbang;
		this.ptype = ptype;
		this.pdetail = pdetail;
		this.pcotx = pcotx;
		this.pstart = pstart;
		this.pend = pend;
		this.pgo = pgo;
	}
	public Project(String ptitle, String pbang, String ptype, String pdetail, String pcotx, int pcost, Date pstart,
			Date pend, String pgo) {
		super();
		this.ptitle = ptitle;
		this.pbang = pbang;
		this.ptype = ptype;
		this.pdetail = pdetail;
		this.pcotx = pcotx;
		this.pcost = pcost;
		this.pstart = pstart;
		this.pend = pend;
		this.pgo = pgo;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public Date getPenroll() {
		return penroll;
	}
	public void setPenroll(Date penroll) {
		this.penroll = penroll;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getPbang() {
		return pbang;
	}
	public void setPbang(String pbang) {
		this.pbang = pbang;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPdetail() {
		return pdetail;
	}
	public void setPdetail(String pdetail) {
		this.pdetail = pdetail;
	}
	public String getPcotx() {
		return pcotx;
	}
	public void setPcotx(String pcotx) {
		this.pcotx = pcotx;
	}
	public int getPcost() {
		return pcost;
	}
	public void setPcost(int pcost) {
		this.pcost = pcost;
	}
	public Date getPstart() {
		return pstart;
	}
	public void setPstart(Date pstart) {
		this.pstart = pstart;
	}
	public Date getPend() {
		return pend;
	}
	public void setPend(Date pend) {
		this.pend = pend;
	}
	public String getPgo() {
		return pgo;
	}
	public void setPgo(String pgo) {
		this.pgo = pgo;
	}
	public Date getPmodate() {
		return pmodate;
	}
	public void setPmodate(Date pmodate) {
		this.pmodate = pmodate;
	}
	public String getPmodwtr() {
		return pmodwtr;
	}
	public void setPmodwtr(String pmodwtr) {
		this.pmodwtr = pmodwtr;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	

	
}
