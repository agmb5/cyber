.class final Lcom/badlogic/gdx/math/Interpolation$11;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 1

    const v0, 0x3fc90fdb

    mul-float p1, p1, v0

    .line 119
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p1

    return p1
.end method
