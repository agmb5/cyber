.class Ljwtc/android/chess/play/SaveGameDialog$1;
.super Ljava/lang/Object;
.source "SaveGameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/SaveGameDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/play/SaveGameDialog;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/SaveGameDialog;)V
    .locals 0

    .line 43
    iput-object p1, p0, Ljwtc/android/chess/play/SaveGameDialog$1;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Ljwtc/android/chess/play/SaveGameDialog$1;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    invoke-static {p1}, Ljwtc/android/chess/play/SaveGameDialog;->access$000(Ljwtc/android/chess/play/SaveGameDialog;)Landroid/app/DatePickerDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
