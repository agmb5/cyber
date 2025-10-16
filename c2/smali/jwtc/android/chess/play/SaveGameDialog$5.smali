.class Ljwtc/android/chess/play/SaveGameDialog$5;
.super Ljava/lang/Object;
.source "SaveGameDialog.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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

.field final synthetic val$_butDate:Landroid/widget/Button;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/SaveGameDialog;Landroid/widget/Button;)V
    .locals 0

    .line 83
    iput-object p1, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    iput-object p2, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->val$_butDate:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 86
    iget-object p1, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    invoke-static {p1, p2}, Ljwtc/android/chess/play/SaveGameDialog;->access$102(Ljwtc/android/chess/play/SaveGameDialog;I)I

    .line 87
    iget-object p1, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    add-int/lit8 p3, p3, 0x1

    invoke-static {p1, p3}, Ljwtc/android/chess/play/SaveGameDialog;->access$202(Ljwtc/android/chess/play/SaveGameDialog;I)I

    .line 88
    iget-object p1, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    invoke-static {p1, p4}, Ljwtc/android/chess/play/SaveGameDialog;->access$302(Ljwtc/android/chess/play/SaveGameDialog;I)I

    .line 89
    iget-object p1, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->val$_butDate:Landroid/widget/Button;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    invoke-static {p3}, Ljwtc/android/chess/play/SaveGameDialog;->access$100(Ljwtc/android/chess/play/SaveGameDialog;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    invoke-static {p4}, Ljwtc/android/chess/play/SaveGameDialog;->access$200(Ljwtc/android/chess/play/SaveGameDialog;)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ljwtc/android/chess/play/SaveGameDialog$5;->this$0:Ljwtc/android/chess/play/SaveGameDialog;

    invoke-static {p3}, Ljwtc/android/chess/play/SaveGameDialog;->access$300(Ljwtc/android/chess/play/SaveGameDialog;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
