.class public Lmiuix/theme/symbol/SymbolPaint;
.super Ljava/lang/Object;
.source "SymbolPaint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/Paint;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private colorsList:Landroid/content/res/ColorStateList;

.field private final paint:Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->state:[I

    .line 15
    iput-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->colorsList:Landroid/content/res/ColorStateList;

    .line 18
    iput-object p1, p0, Lmiuix/theme/symbol/SymbolPaint;->paint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private getColorForCurrentState(I)I
    .registers 4

    .line 42
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->colorsList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lmiuix/theme/symbol/SymbolPaint;->state:[I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    :cond_a
    return p1
.end method


# virtual methods
.method public applyState([I)Z
    .registers 4

    .line 46
    iput-object p1, p0, Lmiuix/theme/symbol/SymbolPaint;->state:[I

    .line 48
    invoke-virtual {p0}, Lmiuix/theme/symbol/SymbolPaint;->getColorForCurrentState()I

    move-result p1

    .line 49
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 50
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    if-eq p1, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public getColorForCurrentState()I
    .registers 2

    .line 38
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->colorsList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0, v0}, Lmiuix/theme/symbol/SymbolPaint;->getColorForCurrentState(I)I

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 28
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 29
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/theme/symbol/SymbolPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolPaint;->state:[I

    if-eqz v1, :cond_25

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_25
    const-string v1, "null"

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", colorList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/theme/symbol/SymbolPaint;->colorsList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
