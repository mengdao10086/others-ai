.class public Lmiuix/theme/Typography;
.super Ljava/lang/Object;
.source "Typography.java"


# static fields
.field public static MISANS_LIGHT:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static applyMiSansLight(Landroid/widget/TextView;)V
    .registers 4

    .line 110
    :try_start_0
    sget-object v0, Lmiuix/theme/Typography;->MISANS_LIGHT:Landroid/graphics/Typeface;

    if-nez v0, :cond_10

    .line 111
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiuix/theme/Typography;->MISANS_LIGHT:Landroid/graphics/Typeface;

    goto :goto_10

    :catch_e
    move-exception v0

    goto :goto_16

    .line 113
    :cond_10
    :goto_10
    sget-object v0, Lmiuix/theme/Typography;->MISANS_LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_e

    goto :goto_22

    .line 115
    :goto_16
    const-string v1, "Typography"

    const-string v2, "Failed to set [sans-serif-medium normal] typeface!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_22
    return-void
.end method
