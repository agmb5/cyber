.class Ljwtc/android/chess/play/MenuDialog$1;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/MenuDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/play/MenuDialog;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/MenuDialog;)V
    .locals 0

    .line 22
    iput-object p1, p0, Ljwtc/android/chess/play/MenuDialog$1;->this$0:Ljwtc/android/chess/play/MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "item"

    .line 27
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Ljwtc/android/chess/play/MenuDialog$1;->this$0:Ljwtc/android/chess/play/MenuDialog;

    invoke-static {p1, p2}, Ljwtc/android/chess/play/MenuDialog;->access$000(Ljwtc/android/chess/play/MenuDialog;Landroid/os/Bundle;)V

    .line 29
    iget-object p1, p0, Ljwtc/android/chess/play/MenuDialog$1;->this$0:Ljwtc/android/chess/play/MenuDialog;

    invoke-virtual {p1}, Ljwtc/android/chess/play/MenuDialog;->dismiss()V

    return-void
.end method
