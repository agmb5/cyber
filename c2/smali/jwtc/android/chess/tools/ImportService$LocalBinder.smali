.class public Ljwtc/android/chess/tools/ImportService$LocalBinder;
.super Landroid/os/Binder;
.source "ImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/tools/ImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/tools/ImportService;


# direct methods
.method public constructor <init>(Ljwtc/android/chess/tools/ImportService;)V
    .locals 0

    .line 277
    iput-object p1, p0, Ljwtc/android/chess/tools/ImportService$LocalBinder;->this$0:Ljwtc/android/chess/tools/ImportService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Ljwtc/android/chess/tools/ImportService;
    .locals 1

    .line 279
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService$LocalBinder;->this$0:Ljwtc/android/chess/tools/ImportService;

    return-object v0
.end method
