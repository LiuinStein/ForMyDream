
// ForMyDreamDlg.h : ͷ�ļ�
//

#pragma once


// CForMyDreamDlg �Ի���
class CForMyDreamDlg : public CDialogEx
{
// ����
public:
	CForMyDreamDlg(CWnd* pParent = NULL);	// ��׼���캯��

// �Ի�������
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_FORMYDREAM_DIALOG };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV ֧��


// ʵ��
protected:
	HICON m_hIcon;

	// ���ɵ���Ϣӳ�亯��
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
    afx_msg void OnBnClickedOk();
private:
    // Splash���ڵ���ʾ���ڣ��Ժ���Ϊ��λ 
    int m_bySleepTime;

    // ���ڻ�ȡ�ı�������
    int getTextNum();
public:
    afx_msg void OnBnClickedRadioSec();
private:
    // ʱ�����������Ϊ��λ
    int m_iTimeBase;
public:
    afx_msg void OnBnClickedRadioMin();
    afx_msg void OnBnClickedRadioHour();
};
