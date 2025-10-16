.class public interface abstract Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;
.super Ljava/lang/Object;
.source "IFieldRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;
    }
.end annotation


# virtual methods
.method public abstract canDrawArc()Z
.end method

.method public abstract doDraw()V
.end method

.method public abstract drawArc(DDDDDDI)V
.end method

.method public abstract drawArc(FFFFFFI)V
.end method

.method public abstract drawLine(DDDDI)V
.end method

.method public abstract drawLine(FFFFI)V
.end method

.method public abstract drawLinePath([D[DI)V
.end method

.method public abstract drawLinePath([F[FI)V
.end method

.method public abstract fillCircle(DDDI)V
.end method

.method public abstract fillCircle(FFFI)V
.end method

.method public abstract frameCircle(DDDI)V
.end method

.method public abstract frameCircle(FFFI)V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method
