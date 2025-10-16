.class public Ljwtc/android/chess/play/ClockDialog;
.super Ljwtc/android/chess/helpers/ResultDialog;
.source "ClockDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V
    .locals 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Ljwtc/android/chess/helpers/ResultDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    const p1, 0x7f0b001d

    .line 19
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/ClockDialog;->setContentView(I)V

    const-string p1, "clockIncrement"

    const-wide/16 p2, 0x0

    .line 21
    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    const-string v0, "clockTotalMillies"

    .line 22
    invoke-interface {p4, v0, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    const-wide/32 v0, 0xea60

    div-long/2addr p2, v0

    long-to-int p3, p2

    const p2, 0x7f080043

    .line 24
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/ClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 25
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/ClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080023

    .line 30
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/ClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 31
    new-instance p3, Ljwtc/android/chess/play/ClockDialog$1;

    invoke-direct {p3, p0, p4, v0, p2}, Ljwtc/android/chess/play/ClockDialog$1;-><init>(Ljwtc/android/chess/play/ClockDialog;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08000d

    .line 54
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/ClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 55
    new-instance p2, Ljwtc/android/chess/play/ClockDialog$2;

    invoke-direct {p2, p0}, Ljwtc/android/chess/play/ClockDialog$2;-><init>(Ljwtc/android/chess/play/ClockDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/play/ClockDialog;Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/ClockDialog;->setResult(Landroid/os/Bundle;)V

    return-void
.end method
