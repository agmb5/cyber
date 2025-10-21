.class Lcom/example/combination/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/combination/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/combination/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/combination/MainActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/example/combination/MainActivity$3;->this$0:Lcom/example/combination/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/example/combination/MainActivity$3;->this$0:Lcom/example/combination/MainActivity;

    const-string p1, ""

    iput-object p1, p0, Lcom/example/combination/MainActivity;->pattern:Ljava/lang/String;

    return-void
.end method
