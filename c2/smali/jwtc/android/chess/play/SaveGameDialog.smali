.class public Ljwtc/android/chess/play/SaveGameDialog;
.super Ljwtc/android/chess/helpers/ResultDialog;
.source "SaveGameDialog.java"


# instance fields
.field private _day:I

.field private _dlgDate:Landroid/app/DatePickerDialog;

.field private _editBlack:Landroid/widget/EditText;

.field private _editEvent:Landroid/widget/EditText;

.field private _editWhite:Landroid/widget/EditText;

.field private _month:I

.field private _rateRating:Landroid/widget/RatingBar;

.field private _sPGN:Ljava/lang/String;

.field private _year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/lang/String;Z)V
    .locals 6

    .line 30
    invoke-direct {p0, p1, p2, p3}, Ljwtc/android/chess/helpers/ResultDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    const p2, 0x7f0b005d

    .line 32
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/SaveGameDialog;->setContentView(I)V

    const p2, 0x7f0e01e2

    .line 34
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/SaveGameDialog;->setTitle(I)V

    const p2, 0x7f080072

    .line 36
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, Ljwtc/android/chess/play/SaveGameDialog;->_rateRating:Landroid/widget/RatingBar;

    const p2, 0x7f08004a

    .line 38
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editEvent:Landroid/widget/EditText;

    const p2, 0x7f08004b

    .line 39
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editWhite:Landroid/widget/EditText;

    const p2, 0x7f080049

    .line 40
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editBlack:Landroid/widget/EditText;

    const p2, 0x7f08002e

    .line 42
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 43
    new-instance p3, Ljwtc/android/chess/play/SaveGameDialog$1;

    invoke-direct {p3, p0}, Ljwtc/android/chess/play/SaveGameDialog$1;-><init>(Ljwtc/android/chess/play/SaveGameDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f08002f

    .line 49
    invoke-virtual {p0, p3}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 50
    new-instance v0, Ljwtc/android/chess/play/SaveGameDialog$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/SaveGameDialog$2;-><init>(Ljwtc/android/chess/play/SaveGameDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f08002d

    .line 57
    invoke-virtual {p0, p3}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 58
    new-instance v0, Ljwtc/android/chess/play/SaveGameDialog$3;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/SaveGameDialog$3;-><init>(Ljwtc/android/chess/play/SaveGameDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08002c

    .line 65
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/SaveGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    new-instance v1, Ljwtc/android/chess/play/SaveGameDialog$4;

    invoke-direct {v1, p0}, Ljwtc/android/chess/play/SaveGameDialog$4;-><init>(Ljwtc/android/chess/play/SaveGameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Ljwtc/android/chess/play/SaveGameDialog;->_rateRating:Landroid/widget/RatingBar;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 73
    iget-object v0, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editEvent:Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p4, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editWhite:Landroid/widget/EditText;

    invoke-virtual {p4, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p4, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editBlack:Landroid/widget/EditText;

    invoke-virtual {p4, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p4, 0x1

    .line 77
    invoke-virtual {p7, p4}, Ljava/util/Calendar;->get(I)I

    move-result p5

    iput p5, p0, Ljwtc/android/chess/play/SaveGameDialog;->_year:I

    const/4 p5, 0x2

    .line 78
    invoke-virtual {p7, p5}, Ljava/util/Calendar;->get(I)I

    move-result p5

    add-int/2addr p5, p4

    iput p5, p0, Ljwtc/android/chess/play/SaveGameDialog;->_month:I

    const/4 p5, 0x5

    .line 79
    invoke-virtual {p7, p5}, Ljava/util/Calendar;->get(I)I

    move-result p5

    iput p5, p0, Ljwtc/android/chess/play/SaveGameDialog;->_day:I

    .line 81
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget p6, p0, Ljwtc/android/chess/play/SaveGameDialog;->_year:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "."

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p7, p0, Ljwtc/android/chess/play/SaveGameDialog;->_month:I

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p0, Ljwtc/android/chess/play/SaveGameDialog;->_day:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance p5, Landroid/app/DatePickerDialog;

    new-instance v2, Ljwtc/android/chess/play/SaveGameDialog$5;

    invoke-direct {v2, p0, p2}, Ljwtc/android/chess/play/SaveGameDialog$5;-><init>(Ljwtc/android/chess/play/SaveGameDialog;Landroid/widget/Button;)V

    iget v3, p0, Ljwtc/android/chess/play/SaveGameDialog;->_year:I

    iget p2, p0, Ljwtc/android/chess/play/SaveGameDialog;->_month:I

    add-int/lit8 v4, p2, -0x1

    iget v5, p0, Ljwtc/android/chess/play/SaveGameDialog;->_day:I

    move-object v0, p5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object p5, p0, Ljwtc/android/chess/play/SaveGameDialog;->_dlgDate:Landroid/app/DatePickerDialog;

    .line 94
    iput-object p8, p0, Ljwtc/android/chess/play/SaveGameDialog;->_sPGN:Ljava/lang/String;

    .line 96
    invoke-virtual {p3, p9}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/play/SaveGameDialog;)Landroid/app/DatePickerDialog;
    .locals 0

    .line 21
    iget-object p0, p0, Ljwtc/android/chess/play/SaveGameDialog;->_dlgDate:Landroid/app/DatePickerDialog;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/play/SaveGameDialog;)I
    .locals 0

    .line 21
    iget p0, p0, Ljwtc/android/chess/play/SaveGameDialog;->_year:I

    return p0
.end method

.method static synthetic access$102(Ljwtc/android/chess/play/SaveGameDialog;I)I
    .locals 0

    .line 21
    iput p1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_year:I

    return p1
.end method

.method static synthetic access$200(Ljwtc/android/chess/play/SaveGameDialog;)I
    .locals 0

    .line 21
    iget p0, p0, Ljwtc/android/chess/play/SaveGameDialog;->_month:I

    return p0
.end method

.method static synthetic access$202(Ljwtc/android/chess/play/SaveGameDialog;I)I
    .locals 0

    .line 21
    iput p1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_month:I

    return p1
.end method

.method static synthetic access$300(Ljwtc/android/chess/play/SaveGameDialog;)I
    .locals 0

    .line 21
    iget p0, p0, Ljwtc/android/chess/play/SaveGameDialog;->_day:I

    return p0
.end method

.method static synthetic access$302(Ljwtc/android/chess/play/SaveGameDialog;I)I
    .locals 0

    .line 21
    iput p1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_day:I

    return p1
.end method


# virtual methods
.method protected save(Z)V
    .locals 8

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 103
    iget v2, p0, Ljwtc/android/chess/play/SaveGameDialog;->_year:I

    iget v1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_month:I

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Ljwtc/android/chess/play/SaveGameDialog;->_day:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 104
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string v3, "date"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    iget-object v1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editWhite:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editBlack:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "black"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_sPGN:Ljava/lang/String;

    const-string v2, "pgn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_rateRating:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    const-string v2, "rating"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 109
    iget-object v1, p0, Ljwtc/android/chess/play/SaveGameDialog;->_editEvent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "copy"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/SaveGameDialog;->setResult(Landroid/os/Bundle;)V

    return-void
.end method
