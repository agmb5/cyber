.class Ljwtc/android/chess/tools/ImportService$ImportApi;
.super Ljwtc/android/chess/services/GameApi;
.source "ImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/tools/ImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportApi"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/tools/ImportService;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/tools/ImportService;)V
    .locals 0

    .line 371
    iput-object p1, p0, Ljwtc/android/chess/tools/ImportService$ImportApi;->this$0:Ljwtc/android/chess/tools/ImportService;

    invoke-direct {p0}, Ljwtc/android/chess/services/GameApi;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/tools/ImportService;Ljwtc/android/chess/tools/ImportService$1;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Ljwtc/android/chess/tools/ImportService$ImportApi;-><init>(Ljwtc/android/chess/tools/ImportService;)V

    return-void
.end method
