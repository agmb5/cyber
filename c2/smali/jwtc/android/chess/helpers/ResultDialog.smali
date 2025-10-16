.class public Ljwtc/android/chess/helpers/ResultDialog;
.super Landroid/app/Dialog;
.source "ResultDialog.java"


# instance fields
.field protected listener:Ljwtc/android/chess/helpers/ResultDialogListener;

.field protected requestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Ljwtc/android/chess/helpers/ResultDialog;->listener:Ljwtc/android/chess/helpers/ResultDialogListener;

    .line 17
    iput p3, p0, Ljwtc/android/chess/helpers/ResultDialog;->requestCode:I

    return-void
.end method


# virtual methods
.method protected setResult(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    iget-object v0, p0, Ljwtc/android/chess/helpers/ResultDialog;->listener:Ljwtc/android/chess/helpers/ResultDialogListener;

    iget v1, p0, Ljwtc/android/chess/helpers/ResultDialog;->requestCode:I

    invoke-interface {v0, v1, p1}, Ljwtc/android/chess/helpers/ResultDialogListener;->OnDialogResult(ILandroid/os/Bundle;)V

    return-void
.end method
