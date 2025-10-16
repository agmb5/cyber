.class Ljwtc/android/chess/play/PlayActivity$8;
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

.field final synthetic val$butMute:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/PlayActivity;Landroid/widget/ImageButton;)V
    .locals 0

    .line 223
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$8;->this$0:Ljwtc/android/chess/play/PlayActivity;

    iput-object p2, p0, Ljwtc/android/chess/play/PlayActivity$8;->val$butMute:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$8;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$1200(Ljwtc/android/chess/play/PlayActivity;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p1, v0}, Ljwtc/android/chess/play/PlayActivity;->access$1102(Ljwtc/android/chess/play/PlayActivity;F)F

    .line 227
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$8;->val$butMute:Landroid/widget/ImageButton;

    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity$8;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {v0}, Ljwtc/android/chess/play/PlayActivity;->access$1300(Ljwtc/android/chess/play/PlayActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const v0, 0x7f070170

    goto :goto_1

    :cond_1
    const v0, 0x7f07016f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method
