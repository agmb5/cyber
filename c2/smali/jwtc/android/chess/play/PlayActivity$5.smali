.class Ljwtc/android/chess/play/PlayActivity$5;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/PlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/play/PlayActivity;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/PlayActivity;)V
    .locals 0

    .line 188
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$5;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 191
    sput p1, Ljwtc/android/chess/constants/PieceSets;->selectedBlindfoldMode:I

    .line 192
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity$5;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {v0}, Ljwtc/android/chess/play/PlayActivity;->access$600(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessBoardView;

    move-result-object v0

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessBoardView;->invalidatePieces()V

    .line 193
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity$5;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {v0}, Ljwtc/android/chess/play/PlayActivity;->access$700(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljwtc/android/chess/views/ChessPiecesStackView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity$5;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {v0}, Ljwtc/android/chess/play/PlayActivity;->access$800(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljwtc/android/chess/views/ChessPiecesStackView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$5;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$700(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/views/ChessPiecesStackView;->invalidatePieces()V

    .line 196
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$5;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$800(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/views/ChessPiecesStackView;->invalidatePieces()V

    return-void
.end method
