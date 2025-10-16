.class public Ljwtc/android/chess/ics/ICSPlayerDlg;
.super Landroid/app/Dialog;
.source "ICSPlayerDlg.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ICSPlayerDlg"


# instance fields
.field private _butExit:Landroid/widget/Button;

.field private _butFinger:Landroid/widget/Button;

.field private _butFollow:Landroid/widget/Button;

.field private _butFriendsList:Landroid/widget/Button;

.field private _butHistory:Landroid/widget/Button;

.field private _butMatch:Landroid/widget/Button;

.field private _butSmoves:Landroid/widget/Button;

.field private _butUnfollow:Landroid/widget/Button;

.field private _editPlayerChat:Landroid/widget/EditText;

.field private _opponentName:Ljava/lang/String;

.field private _parent:Ljwtc/android/chess/ics/ICSClient;

.field protected _scrollPlayerListConsole:Landroid/widget/ScrollView;

.field private _tvOpponentName:Landroid/widget/TextView;

.field protected _tvPlayerListConsole:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    check-cast p1, Ljwtc/android/chess/ics/ICSClient;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_parent:Ljwtc/android/chess/ics/ICSClient;

    const p1, 0x7f0b002f

    .line 41
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->setContentView(I)V

    const p1, 0x7f080196

    .line 43
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_tvOpponentName:Landroid/widget/TextView;

    const p1, 0x7f080099

    .line 45
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_tvPlayerListConsole:Landroid/widget/TextView;

    const p1, 0x7f080076

    .line 46
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_scrollPlayerListConsole:Landroid/widget/ScrollView;

    const p1, 0x7f080016

    .line 49
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_butExit:Landroid/widget/Button;

    .line 50
    new-instance v0, Ljwtc/android/chess/ics/ICSPlayerDlg$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$1;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080003

    .line 57
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_butHistory:Landroid/widget/Button;

    .line 58
    new-instance v0, Ljwtc/android/chess/ics/ICSPlayerDlg$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$2;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080001

    .line 66
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_butFinger:Landroid/widget/Button;

    .line 67
    new-instance v0, Ljwtc/android/chess/ics/ICSPlayerDlg$3;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$3;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080002

    .line 75
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_butFollow:Landroid/widget/Button;

    .line 76
    new-instance v0, Ljwtc/android/chess/ics/ICSPlayerDlg$4;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$4;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080008

    .line 84
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_butUnfollow:Landroid/widget/Button;

    .line 85
    new-instance v0, Ljwtc/android/chess/ics/ICSPlayerDlg$5;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$5;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080006

    .line 93
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_butMatch:Landroid/widget/Button;

    .line 94
    new-instance v0, Ljwtc/android/chess/ics/ICSPlayerDlg$6;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$6;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance p1, Ljwtc/android/chess/ics/ICSPlayerDlg$7;

    invoke-direct {p1, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$7;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    const v0, 0x7f080007

    .line 124
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_butSmoves:Landroid/widget/Button;

    .line 125
    new-instance v1, Ljwtc/android/chess/ics/ICSPlayerDlg$8;

    invoke-direct {v1, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg$8;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080044

    .line 161
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSPlayerDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_editPlayerChat:Landroid/widget/EditText;

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_opponentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_parent:Ljwtc/android/chess/ics/ICSClient;

    return-object p0
.end method


# virtual methods
.method public opponentName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\\(\\w+\\)"

    const-string v1, ""

    .line 166
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_opponentName:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_tvOpponentName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_editPlayerChat:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSPlayerDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg;->_opponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
