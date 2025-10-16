.class Ljwtc/android/chess/play/PlayActivity$7;
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

    .line 212
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$7;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 215
    sput p1, Ljwtc/android/chess/constants/PieceSets;->selectedBlindfoldMode:I

    .line 216
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$7;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$1000(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessBoardView;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/views/ChessBoardView;->invalidatePieces()V

    .line 217
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$7;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$700(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljwtc/android/chess/views/ChessPiecesStackView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$7;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$800(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljwtc/android/chess/views/ChessPiecesStackView;->setVisibility(I)V

    return-void
.end method
