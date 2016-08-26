
// ForMyDreamDlg.cpp : ʵ���ļ�
//

#include "stdafx.h"
#include "ForMyDream.h"
#include "ForMyDreamDlg.h"
#include "afxdialogex.h"
#include "SplashDlg.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif

UINT startShow(LPVOID pParam)
{
    while (1)
    {
        CSplashDlg csdShow;
        csdShow.DoModal();
        Sleep(static_cast<CForMyDreamDlg*>(pParam)->m_bySleepTime);
    }
}

// CForMyDreamDlg �Ի���



CForMyDreamDlg::CForMyDreamDlg(CWnd* pParent /*=NULL*/)
    : CDialogEx(IDD_FORMYDREAM_DIALOG, pParent)
    , m_bySleepTime(-1)
    , m_iTimeBase(-1)
    , m_bIsStart(false)
{
    m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CForMyDreamDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CForMyDreamDlg, CDialogEx)
    ON_WM_PAINT()
    ON_WM_QUERYDRAGICON()
    ON_BN_CLICKED(IDOK, &CForMyDreamDlg::OnBnClickedOk)
    ON_BN_CLICKED(IDC_RADIO_SEC, &CForMyDreamDlg::OnBnClickedRadioSec)
    ON_BN_CLICKED(IDC_RADIO_MIN, &CForMyDreamDlg::OnBnClickedRadioMin)
    ON_BN_CLICKED(IDC_RADIO_HOUR, &CForMyDreamDlg::OnBnClickedRadioHour)
END_MESSAGE_MAP()


// CForMyDreamDlg ��Ϣ�������

BOOL CForMyDreamDlg::OnInitDialog()
{
    CDialogEx::OnInitDialog();

    // ���ô˶Ի����ͼ�ꡣ  ��Ӧ�ó��������ڲ��ǶԻ���ʱ����ܽ��Զ�
    //  ִ�д˲���
    SetIcon(m_hIcon, TRUE);			// ���ô�ͼ��
    SetIcon(m_hIcon, FALSE);		// ����Сͼ��

    // TODO: �ڴ���Ӷ���ĳ�ʼ������

    return TRUE;  // ���ǽ��������õ��ؼ������򷵻� TRUE
}

// �����Ի��������С����ť������Ҫ����Ĵ���
//  �����Ƹ�ͼ�ꡣ  ����ʹ���ĵ�/��ͼģ�͵� MFC Ӧ�ó���
//  �⽫�ɿ���Զ���ɡ�

void CForMyDreamDlg::OnPaint()
{
    if (IsIconic())
    {
        CPaintDC dc(this); // ���ڻ��Ƶ��豸������

        SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

        // ʹͼ���ڹ����������о���
        int cxIcon = GetSystemMetrics(SM_CXICON);
        int cyIcon = GetSystemMetrics(SM_CYICON);
        CRect rect;
        GetClientRect(&rect);
        int x = (rect.Width() - cxIcon + 1) / 2;
        int y = (rect.Height() - cyIcon + 1) / 2;

        // ����ͼ��
        dc.DrawIcon(x, y, m_hIcon);
    }
    else
    {
        CDialogEx::OnPaint();
    }
}

//���û��϶���С������ʱϵͳ���ô˺���ȡ�ù��
//��ʾ��
HCURSOR CForMyDreamDlg::OnQueryDragIcon()
{
    return static_cast<HCURSOR>(m_hIcon);
}



void CForMyDreamDlg::OnBnClickedOk()
{
    if (!m_bIsStart)
    {
        if (-1 == m_iTimeBase)
        {
            MessageBox(_T("��ѡ�����ڵ�λ"), _T("Just for my dream!"), MB_OK | MB_ICONERROR);
            return;
        }
        int iInputNum = getTextNum();
        if (-1 == getTextNum())
        {
            MessageBox(_T("����������"), _T("Just for my dream!"), MB_OK | MB_ICONERROR);
            return;
        }
        m_bySleepTime = m_iTimeBase * 1000 * iInputNum;
        SetDlgItemText(IDOK, _T("��ͣ"));
        setTextRadioEnable(FALSE);
        static auto wtpStartThread = AfxBeginThread(startShow, this);
    }
    else
    {
        SetDlgItemText(IDOK, _T("��ʼ"));
        setTextRadioEnable(TRUE);
        
    }
    m_bIsStart = !m_bIsStart; 
}


int CForMyDreamDlg::getTextNum()
{
    CString cstrInput;
    GetDlgItem(IDC_EDIT_INTERVAL)->GetWindowTextW(cstrInput);
    if ("" == cstrInput)
        return -1;
    return  _ttoi(cstrInput);
}

void CForMyDreamDlg::setTextRadioEnable(BOOL __b)
{
    GetDlgItem(IDC_EDIT_INTERVAL)->EnableWindow(__b);
    GetDlgItem(IDC_RADIO_SEC)->EnableWindow(__b);
    GetDlgItem(IDC_RADIO_MIN)->EnableWindow(__b);
    GetDlgItem(IDC_RADIO_HOUR)->EnableWindow(__b);
}

void CForMyDreamDlg::OnBnClickedRadioSec()
{
    m_iTimeBase = 1;
}

void CForMyDreamDlg::OnBnClickedRadioMin()
{
    m_iTimeBase = 60;
}

void CForMyDreamDlg::OnBnClickedRadioHour()
{
    m_iTimeBase = 3600;
}
