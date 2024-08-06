def ct_nt(filename):
    print(f"Processing file: {filename}")  # Debugging line
    if filename.endswith('.fasta') or filename.endswith('.fa'):
        return ct_nt_fasta(filename)
    else:
        return ct_nt_text(filename)

def ct_nt_text(filename):
    with open(filename, 'r') as file:
        data = file.read().replace('\n', '')  # Remove line breaks for counting
        print("Data read from file.")  # Debugging line
        
        a_count = data.count('A') + data.count('a')
        c_count = data.count('C') + data.count('c')
        g_count = data.count('G') + data.count('g')
        t_count = data.count('T') + data.count('t')
        
        return a_count, c_count, g_count, t_count

def ct_nt_fasta(filename):
    a_count = c_count = g_count = t_count = 0
    
    with open(filename, 'r') as file:
        for line in file:
            if not line.startswith('>'):  # Skip header lines
                line = line.strip()  # Remove whitespace
                a_count += line.count('A') + line.count('a')
                c_count += line.count('C') + line.count('c')
                g_count += line.count('G') + line.count('g')
                t_count += line.count('T') + line.count('t')
    
    return a_count, c_count, g_count, t_count

# Example usage
if __name__ == "__main__":
    filename = 'CDKN1B_cds.fasta'  # Change the filename to your input file
    results = ct_nt(filename)
    print(f'A: {results[0]}, C: {results[1]}, G: {results[2]}, T: {results[3]}')
