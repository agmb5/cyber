.class Ljwtc/android/chess/ics/ICSClient$20;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSClient;->OnChallenged(Ljava/util/HashMap;)V
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

    .line 1319
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$20;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1321
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient$20;->this$0:Ljwtc/android/chess/ics/ICSClient;

    const-string v0, "accept"

    invoke-virtual {p2, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    .line 1322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
