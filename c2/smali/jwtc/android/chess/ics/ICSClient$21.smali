.class Ljwtc/android/chess/ics/ICSClient$21;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSClient;->addConsoleText(Ljava/lang/String;)V
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

    .line 1574
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$21;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1576
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient$21;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSClient;->access$300(Ljwtc/android/chess/ics/ICSClient;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
