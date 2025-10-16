.class Ljwtc/android/chess/puzzle/PuzzleActivity$2;
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

    .line 94
    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$2;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$2;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-static {p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->access$000(Ljwtc/android/chess/puzzle/PuzzleActivity;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$2;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-static {v0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->access$100(Ljwtc/android/chess/puzzle/PuzzleActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$2;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-static {p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->access$008(Ljwtc/android/chess/puzzle/PuzzleActivity;)I

    .line 98
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity$2;->this$0:Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->startPuzzle()V

    :cond_0
    return-void
.end method
