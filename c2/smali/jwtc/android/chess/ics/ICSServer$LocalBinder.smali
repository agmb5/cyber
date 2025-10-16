.class public Ljwtc/android/chess/ics/ICSServer$LocalBinder;
.super Landroid/os/Binder;
.source "ICSServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/ics/ICSServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSServer;


# direct methods
.method public constructor <init>(Ljwtc/android/chess/ics/ICSServer;)V
    .locals 0

    .line 474
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSServer$LocalBinder;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Ljwtc/android/chess/ics/ICSServer;
    .locals 1

    .line 476
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer$LocalBinder;->this$0:Ljwtc/android/chess/ics/ICSServer;

    return-object v0
.end method
