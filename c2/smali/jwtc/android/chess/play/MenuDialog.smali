.class public Ljwtc/android/chess/play/MenuDialog;
.super Ljwtc/android/chess/helpers/ResultDialog;
.source "MenuDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Ljwtc/android/chess/helpers/ResultDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    const p1, 0x7f0e01d4

    .line 18
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/MenuDialog;->setTitle(I)V

    const p1, 0x7f0b0059

    .line 19
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/MenuDialog;->setContentView(I)V

    const p1, 0x7f080062

    .line 21
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 22
    new-instance p2, Ljwtc/android/chess/play/MenuDialog$1;

    invoke-direct {p2, p0}, Ljwtc/android/chess/play/MenuDialog$1;-><init>(Ljwtc/android/chess/play/MenuDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/play/MenuDialog;Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/MenuDialog;->setResult(Landroid/os/Bundle;)V

    return-void
.end method
