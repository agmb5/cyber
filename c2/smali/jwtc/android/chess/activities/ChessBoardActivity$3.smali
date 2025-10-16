.class Ljwtc/android/chess/activities/ChessBoardActivity$3;
.super Ljava/lang/Object;
.source "ChessBoardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/activities/ChessBoardActivity;->requestMove(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

.field final synthetic val$from:I

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Ljwtc/android/chess/activities/ChessBoardActivity;II)V
    .locals 0

    .line 109
    iput-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iput p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->val$from:I

    iput p3, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->val$to:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    iget p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->val$from:I

    iget p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->val$to:I

    if-eq p1, p2, :cond_0

    .line 113
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget-object p1, p1, Ljwtc/android/chess/activities/ChessBoardActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    iget p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->val$from:I

    iget v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity$3;->val$to:I

    invoke-virtual {p1, p2, v0}, Ljwtc/android/chess/services/GameApi;->requestMove(II)Z

    :cond_0
    return-void
.end method
