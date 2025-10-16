.class Ljwtc/android/chess/play/PlayActivity$9;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/PlayActivity;->showChess960Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/play/PlayActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/PlayActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 596
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$9;->this$0:Ljwtc/android/chess/play/PlayActivity;

    iput-object p2, p0, Ljwtc/android/chess/play/PlayActivity$9;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 599
    :try_start_0
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$9;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 p2, 0x3c0

    if-gt p1, p2, :cond_0

    .line 602
    iget-object p2, p0, Ljwtc/android/chess/play/PlayActivity$9;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p2}, Ljwtc/android/chess/play/PlayActivity;->access$1400(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljwtc/android/chess/services/GameApi;->newGameRandomFischer(I)I

    .line 603
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$9;->this$0:Ljwtc/android/chess/play/PlayActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljwtc/android/chess/play/PlayActivity;->access$1502(Ljwtc/android/chess/play/PlayActivity;J)J

    goto :goto_0

    .line 605
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$9;->this$0:Ljwtc/android/chess/play/PlayActivity;

    const p2, 0x7f0e0072

    invoke-virtual {p1, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/play/PlayActivity;->doToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$9;->this$0:Ljwtc/android/chess/play/PlayActivity;

    const p2, 0x7f0e0071

    invoke-virtual {p1, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/play/PlayActivity;->doToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
