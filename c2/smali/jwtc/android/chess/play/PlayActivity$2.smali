.class Ljwtc/android/chess/play/PlayActivity$2;
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

.field final synthetic val$menuDialog:Ljwtc/android/chess/play/MenuDialog;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/PlayActivity;Ljwtc/android/chess/play/MenuDialog;)V
    .locals 0

    .line 143
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$2;->this$0:Ljwtc/android/chess/play/PlayActivity;

    iput-object p2, p0, Ljwtc/android/chess/play/PlayActivity$2;->val$menuDialog:Ljwtc/android/chess/play/MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$2;->val$menuDialog:Ljwtc/android/chess/play/MenuDialog;

    invoke-virtual {p1}, Ljwtc/android/chess/play/MenuDialog;->show()V

    return-void
.end method
