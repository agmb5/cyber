.class Ljwtc/android/chess/ics/ICSClient$9;
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

    .line 279
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$9;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 282
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$9;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSClient;->setMenuView()V

    return-void
.end method
