.class Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener$1;
.super Ljava/lang/Object;
.source "ChessBoardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

.field final synthetic val$droppedView:Landroid/view/View;


# direct methods
.method constructor <init>(Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;Landroid/view/View;)V
    .locals 0

    .line 508
    iput-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener$1;->this$1:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    iput-object p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener$1;->val$droppedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 511
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener$1;->val$droppedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
