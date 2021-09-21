all: slurm.html slurm_slides.html

slurm.html: slurm.md
	pandoc -s -o slurm.html slurm.md

slurm_slides.html: slurm.md
	pandoc -s --webtex -t slidy -o slurm_slides.html slurm.md

clean:
	rm -rf slurm.html
