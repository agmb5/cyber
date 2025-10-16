.class public Ljwtc/android/chess/ics/ICSMatchDlg;
.super Ljwtc/android/chess/helpers/ResultDialog;
.source "ICSMatchDlg.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ICSMatchDlg"


# instance fields
.field private _adapterColor:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private _adapterIncrement:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private _adapterTime:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private _adapterVariant:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private _butCancel:Landroid/widget/Button;

.field private _butOk:Landroid/widget/Button;

.field private _checkFormula:Landroid/widget/CheckBox;

.field private _checkManual:Landroid/widget/CheckBox;

.field private _checkRated:Landroid/widget/CheckBox;

.field private _editPlayer:Landroid/widget/EditText;

.field private _editRatingRangeMAX:Landroid/widget/EditText;

.field private _editRatingRangeMIN:Landroid/widget/EditText;

.field protected _rbChallenge:Landroid/widget/RadioButton;

.field protected _rbSeek:Landroid/widget/RadioButton;

.field private _spinColor:Landroid/widget/Spinner;

.field private _spinIncrement:Landroid/widget/Spinner;

.field private _spinTime:Landroid/widget/Spinner;

.field private _spinVariant:Landroid/widget/Spinner;

.field private _tvFormula:Landroid/widget/TextView;

.field private _tvManual:Landroid/widget/TextView;

.field private _tvPlayerName:Landroid/widget/TextView;

.field private _tvRatingRangeMAX:Landroid/widget/TextView;

.field private _tvRatingRangeMIN:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1, p2, p3}, Ljwtc/android/chess/helpers/ResultDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    const p2, 0x7f0b002b

    .line 39
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->setContentView(I)V

    const-string p2, "Seek or Challenge"

    .line 41
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f08006c

    .line 43
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_rbSeek:Landroid/widget/RadioButton;

    .line 44
    new-instance p3, Ljwtc/android/chess/ics/ICSMatchDlg$1;

    invoke-direct {p3, p0, p4}, Ljwtc/android/chess/ics/ICSMatchDlg$1;-><init>(Ljwtc/android/chess/ics/ICSMatchDlg;Landroid/content/SharedPreferences;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08006b

    .line 77
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_rbChallenge:Landroid/widget/RadioButton;

    .line 78
    new-instance p3, Ljwtc/android/chess/ics/ICSMatchDlg$2;

    invoke-direct {p3, p0}, Ljwtc/android/chess/ics/ICSMatchDlg$2;-><init>(Ljwtc/android/chess/ics/ICSMatchDlg;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080046

    .line 95
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editPlayer:Landroid/widget/EditText;

    const p2, 0x7f080193

    .line 96
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvPlayerName:Landroid/widget/TextView;

    const p2, 0x7f08007a

    .line 98
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinTime:Landroid/widget/Spinner;

    const p2, 0x7f020010

    const p3, 0x1090008

    .line 99
    invoke-static {p1, p2, p3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterTime:Landroid/widget/ArrayAdapter;

    const v0, 0x1090009

    .line 100
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 101
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinTime:Landroid/widget/Spinner;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterTime:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p2, 0x7f08007b

    .line 103
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinIncrement:Landroid/widget/Spinner;

    const p2, 0x7f02000f

    .line 104
    invoke-static {p1, p2, p3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterIncrement:Landroid/widget/ArrayAdapter;

    .line 105
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 106
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinIncrement:Landroid/widget/Spinner;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterIncrement:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p2, 0x7f08007c

    .line 108
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinVariant:Landroid/widget/Spinner;

    const p2, 0x7f020011

    .line 109
    invoke-static {p1, p2, p3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterVariant:Landroid/widget/ArrayAdapter;

    .line 110
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 111
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinVariant:Landroid/widget/Spinner;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterVariant:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p2, 0x7f080079

    .line 113
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinColor:Landroid/widget/Spinner;

    const p2, 0x7f02000c

    .line 114
    invoke-static {p1, p2, p3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterColor:Landroid/widget/ArrayAdapter;

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 116
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinColor:Landroid/widget/Spinner;

    iget-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_adapterColor:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p1, 0x7f080048

    .line 118
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editRatingRangeMIN:Landroid/widget/EditText;

    const p1, 0x7f080195

    .line 119
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvRatingRangeMIN:Landroid/widget/TextView;

    .line 120
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editRatingRangeMIN:Landroid/widget/EditText;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    const p1, 0x7f080047

    .line 122
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editRatingRangeMAX:Landroid/widget/EditText;

    const p1, 0x7f080194

    .line 123
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvRatingRangeMAX:Landroid/widget/TextView;

    .line 124
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editRatingRangeMAX:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    const p1, 0x7f080038

    .line 126
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_checkRated:Landroid/widget/CheckBox;

    const p1, 0x7f080037

    .line 128
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_checkManual:Landroid/widget/CheckBox;

    const p1, 0x7f080192

    .line 129
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvManual:Landroid/widget/TextView;

    const p1, 0x7f080036

    .line 131
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_checkFormula:Landroid/widget/CheckBox;

    const p1, 0x7f080191

    .line 132
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvFormula:Landroid/widget/TextView;

    const p1, 0x7f08001e

    .line 134
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_butOk:Landroid/widget/Button;

    .line 135
    new-instance p2, Ljwtc/android/chess/ics/ICSMatchDlg$3;

    invoke-direct {p2, p0, p4}, Ljwtc/android/chess/ics/ICSMatchDlg$3;-><init>(Ljwtc/android/chess/ics/ICSMatchDlg;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08001d

    .line 184
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_butCancel:Landroid/widget/Button;

    .line 185
    new-instance p2, Ljwtc/android/chess/ics/ICSMatchDlg$4;

    invoke-direct {p2, p0}, Ljwtc/android/chess/ics/ICSMatchDlg$4;-><init>(Ljwtc/android/chess/ics/ICSMatchDlg;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editPlayer:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvPlayerName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinTime:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1100(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinIncrement:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinVariant:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_spinColor:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_checkRated:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$1500(Ljwtc/android/chess/ics/ICSMatchDlg;Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->setResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editRatingRangeMIN:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvRatingRangeMIN:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editRatingRangeMAX:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvRatingRangeMAX:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_checkManual:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$700(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvManual:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_checkFormula:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$900(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_tvFormula:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public setPlayer(Ljava/lang/String;)V
    .locals 1

    .line 194
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg;->_editPlayer:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
