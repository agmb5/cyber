.class Ljwtc/android/chess/ics/ICSClient$4;
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

    .line 224
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$4;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$4;->this$0:Ljwtc/android/chess/ics/ICSClient;

    const-string v0, "draw"

    invoke-virtual {p1, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    return-void
.end method
