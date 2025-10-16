.class public Ljwtc/android/chess/ics/ICSGameOverDlg;
.super Landroid/app/Dialog;
.source "ICSGameOverDlg.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ICSGameOverDlg"


# instance fields
.field private _butExamine:Landroid/widget/Button;

.field private _butExit:Landroid/widget/Button;

.field private _butRematch:Landroid/widget/Button;

.field private _butSend:Landroid/widget/Button;

.field private _parent:Ljwtc/android/chess/ics/ICSClient;

.field private _tvGameResult:Landroid/widget/TextView;

.field private handle:Ljava/lang/String;

.field private match:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    check-cast p1, Ljwtc/android/chess/ics/ICSClient;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_parent:Ljwtc/android/chess/ics/ICSClient;

    const p1, 0x7f0b002d

    .line 32
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->setContentView(I)V

    const p1, 0x7f0e0093

    .line 34
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->setTitle(I)V

    const p1, 0x7f080016

    .line 36
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_butExit:Landroid/widget/Button;

    .line 37
    new-instance v0, Ljwtc/android/chess/ics/ICSGameOverDlg$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSGameOverDlg$1;-><init>(Ljwtc/android/chess/ics/ICSGameOverDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080190

    .line 44
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_tvGameResult:Landroid/widget/TextView;

    const/16 v0, 0x11

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const p1, 0x7f080017

    .line 48
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_butRematch:Landroid/widget/Button;

    .line 49
    new-instance v0, Ljwtc/android/chess/ics/ICSGameOverDlg$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSGameOverDlg$2;-><init>(Ljwtc/android/chess/ics/ICSGameOverDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080015

    .line 58
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_butExamine:Landroid/widget/Button;

    .line 59
    new-instance v0, Ljwtc/android/chess/ics/ICSGameOverDlg$3;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSGameOverDlg$3;-><init>(Ljwtc/android/chess/ics/ICSGameOverDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080018

    .line 67
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_butSend:Landroid/widget/Button;

    .line 68
    new-instance v0, Ljwtc/android/chess/ics/ICSGameOverDlg$4;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSGameOverDlg$4;-><init>(Ljwtc/android/chess/ics/ICSGameOverDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/ICSGameOverDlg;)Ljwtc/android/chess/ics/ICSClient;
    .locals 0

    .line 16
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_parent:Ljwtc/android/chess/ics/ICSClient;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/ics/ICSGameOverDlg;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->handle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public setHandle(Ljava/lang/String;)V
    .locals 2

    .line 77
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->handle:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_butExamine:Landroid/widget/Button;

    const-string v1, "Guest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setWasPlaying(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_butRematch:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public updateGameResultText(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSGameOverDlg;->_tvGameResult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
