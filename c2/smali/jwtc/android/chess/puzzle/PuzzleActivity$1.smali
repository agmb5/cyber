.class Ljwtc/android/chess/puzzle/PuzzleActivity$1;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/puzzle/PuzzleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;


# direct methods
.method constructor <init>(Ljwtc/android/chess/puzzle/PuzzleActivity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$1;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$1;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-static {p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->access$000(Ljwtc/android/chess/puzzle/PuzzleActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 87
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$1;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-static {p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->access$010(Ljwtc/android/chess/puzzle/PuzzleActivity;)I

    .line 89
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$1;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->startPuzzle()V

    return-void
.end method
