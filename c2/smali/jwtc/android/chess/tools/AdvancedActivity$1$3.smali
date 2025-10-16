.class Ljwtc/android/chess/tools/AdvancedActivity$1$3;
.super Ljava/lang/Object;
.source "AdvancedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/tools/AdvancedActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;


# direct methods
.method constructor <init>(Ljwtc/android/chess/tools/AdvancedActivity$1;)V
    .locals 0

    .line 160
    iput-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$3;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$3;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/tools/AdvancedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "1=1"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$3;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    iget-object p2, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$3;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p2, p2, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v0, 0x7f0e013b

    invoke-virtual {p2, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    return-void
.end method
