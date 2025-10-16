.class Ljwtc/android/chess/ics/ICSClient$11;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSClient;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSClient;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSClient;)V
    .locals 0

    .line 425
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$11;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 428
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 429
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "http://www.freechess.org/Register/index.html"

    .line 430
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient$11;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSClient;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$11;->this$0:Ljwtc/android/chess/ics/ICSClient;

    const-string v0, "Could not go to registration page"

    invoke-virtual {p1, v0}, Ljwtc/android/chess/ics/ICSClient;->doToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
