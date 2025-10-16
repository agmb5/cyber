.class Ljwtc/android/chess/tools/ImportActivity$1;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/tools/ImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/tools/ImportActivity;


# direct methods
.method constructor <init>(Ljwtc/android/chess/tools/ImportActivity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ImportActivity"

    const-string v0, "onServiceConnected"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    check-cast p2, Ljwtc/android/chess/tools/ImportService$LocalBinder;

    invoke-virtual {p2}, Ljwtc/android/chess/tools/ImportService$LocalBinder;->getService()Ljwtc/android/chess/tools/ImportService;

    move-result-object p2

    invoke-static {p1, p2}, Ljwtc/android/chess/tools/ImportActivity;->access$002(Ljwtc/android/chess/tools/ImportActivity;Ljwtc/android/chess/tools/ImportService;)Ljwtc/android/chess/tools/ImportService;

    .line 36
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    invoke-static {p1}, Ljwtc/android/chess/tools/ImportActivity;->access$000(Ljwtc/android/chess/tools/ImportActivity;)Ljwtc/android/chess/tools/ImportService;

    move-result-object p1

    iget-object p2, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    invoke-virtual {p1, p2}, Ljwtc/android/chess/tools/ImportService;->addListener(Ljwtc/android/chess/tools/ImportListener;)V

    .line 37
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    invoke-static {p1}, Ljwtc/android/chess/tools/ImportActivity;->access$000(Ljwtc/android/chess/tools/ImportActivity;)Ljwtc/android/chess/tools/ImportService;

    move-result-object p1

    iget-object p2, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    invoke-static {p2}, Ljwtc/android/chess/tools/ImportActivity;->access$100(Ljwtc/android/chess/tools/ImportActivity;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    invoke-static {v0}, Ljwtc/android/chess/tools/ImportActivity;->access$200(Ljwtc/android/chess/tools/ImportActivity;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljwtc/android/chess/tools/ImportService;->startImport(Landroid/net/Uri;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 41
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity$1;->this$0:Ljwtc/android/chess/tools/ImportActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljwtc/android/chess/tools/ImportActivity;->access$002(Ljwtc/android/chess/tools/ImportActivity;Ljwtc/android/chess/tools/ImportService;)Ljwtc/android/chess/tools/ImportService;

    const-string p1, "ImportActivity"

    const-string v0, "onServiceDisconnected"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
