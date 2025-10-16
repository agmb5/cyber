.class Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;
.super Ljava/lang/Object;
.source "Stars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StarCatalog"
.end annotation


# instance fields
.field decRadians:[D

.field magnitude:[D

.field raRadians:[D

.field x:[D

.field y:[D

.field z:[D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method size()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->x:[D

    array-length v0, v0

    return v0
.end method
